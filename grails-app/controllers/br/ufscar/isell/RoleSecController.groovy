package br.ufscar.isell



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RoleSecController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond RoleSec.list(params), model:[roleSecInstanceCount: RoleSec.count()]
    }

    def show(RoleSec roleSecInstance) {
        respond roleSecInstance
    }

    def create() {
        respond new RoleSec(params)
    }

    @Transactional
    def save(RoleSec roleSecInstance) {
        if (roleSecInstance == null) {
            notFound()
            return
        }

        if (roleSecInstance.hasErrors()) {
            respond roleSecInstance.errors, view:'create'
            return
        }

        roleSecInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'roleSecInstance.label', default: 'RoleSec'), roleSecInstance.id])
                redirect roleSecInstance
            }
            '*' { respond roleSecInstance, [status: CREATED] }
        }
    }

    def edit(RoleSec roleSecInstance) {
        respond roleSecInstance
    }

    @Transactional
    def update(RoleSec roleSecInstance) {
        if (roleSecInstance == null) {
            notFound()
            return
        }

        if (roleSecInstance.hasErrors()) {
            respond roleSecInstance.errors, view:'edit'
            return
        }

        roleSecInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'RoleSec.label', default: 'RoleSec'), roleSecInstance.id])
                redirect roleSecInstance
            }
            '*'{ respond roleSecInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(RoleSec roleSecInstance) {

        if (roleSecInstance == null) {
            notFound()
            return
        }

        roleSecInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'RoleSec.label', default: 'RoleSec'), roleSecInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'roleSecInstance.label', default: 'RoleSec'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
