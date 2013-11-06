package br.ufscar.isell

import org.apache.commons.lang.builder.HashCodeBuilder

class UserSecRoleSec implements Serializable {

	private static final long serialVersionUID = 1

	UserSec userSec
	RoleSec roleSec

	boolean equals(other) {
		if (!(other instanceof UserSecRoleSec)) {
			return false
		}

		other.userSec?.id == userSec?.id &&
			other.roleSec?.id == roleSec?.id
	}

	int hashCode() {
		def builder = new HashCodeBuilder()
		if (userSec) builder.append(userSec.id)
		if (roleSec) builder.append(roleSec.id)
		builder.toHashCode()
	}

	static UserSecRoleSec get(long userSecId, long roleSecId) {
		UserSecRoleSec.where {
			userSec == UserSec.load(userSecId) &&
			roleSec == RoleSec.load(roleSecId)
		}.get()
	}

	static UserSecRoleSec create(UserSec userSec, RoleSec roleSec, boolean flush = false) {
		new UserSecRoleSec(userSec: userSec, roleSec: roleSec).save(flush: flush, insert: true)
	}

	static boolean remove(UserSec u, RoleSec r, boolean flush = false) {

		int rowCount = UserSecRoleSec.where {
			userSec == UserSec.load(u.id) &&
			roleSec == RoleSec.load(r.id)
		}.deleteAll()

		rowCount > 0
	}

	static void removeAll(UserSec u) {
		UserSecRoleSec.where {
			userSec == UserSec.load(u.id)
		}.deleteAll()
	}

	static void removeAll(RoleSec r) {
		UserSecRoleSec.where {
			roleSec == RoleSec.load(r.id)
		}.deleteAll()
	}

	static mapping = {
		id composite: ['roleSec', 'userSec']
		version false
	}
}
