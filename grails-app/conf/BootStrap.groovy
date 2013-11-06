import br.ufscar.isell.UserSec
import br.ufscar.isell.RoleSec
import br.ufscar.isell.UserSecRoleSec

class BootStrap {

    def init = { servletContext ->
        def adminRole = new RoleSec(authority: 'ROLE_ADMIN').save(flush: true)
        def clientRole = new RoleSec(authority: 'ROLE_CLIENT').save(flush: true)
        def admin = new UserSec(username: 'admin', password: '123456')
        admin.save(flush: true)
        UserSecRoleSec.create admin, adminRole, true
    }
    def destroy = {
    }
}
