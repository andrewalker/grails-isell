package br.ufscar.isell

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
@Transactional(readOnly = true)
class UserSecController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond UserSec.list(params), model:[userSecInstanceCount: UserSec.count()]
    }

    def show(UserSec userSecInstance) {
        respond userSecInstance
    }

    def create() {
        respond new UserSec(params)
    }

    @Transactional
    def save(UserSec userSecInstance) {
        if (userSecInstance == null) {
            notFound()
            return
        }

        if (userSecInstance.hasErrors()) {
            respond userSecInstance.errors, view:'create'
            return
        }

        userSecInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'userSecInstance.label', default: 'UserSec'), userSecInstance.id])
                redirect userSecInstance
            }
            '*' { respond userSecInstance, [status: CREATED] }
        }
    }

    def edit(UserSec userSecInstance) {
        respond userSecInstance
    }

    @Transactional
    def update(UserSec userSecInstance) {
        if (userSecInstance == null) {
            notFound()
            return
        }

        if (userSecInstance.hasErrors()) {
            respond userSecInstance.errors, view:'edit'
            return
        }

        userSecInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'UserSec.label', default: 'UserSec'), userSecInstance.id])
                redirect userSecInstance
            }
            '*'{ respond userSecInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(UserSec userSecInstance) {

        if (userSecInstance == null) {
            notFound()
            return
        }

        userSecInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'UserSec.label', default: 'UserSec'), userSecInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'userSecInstance.label', default: 'UserSec'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
