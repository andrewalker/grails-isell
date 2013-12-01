package br.ufscar.isell

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
@Transactional(readOnly = true)
class ShoppingOrderController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ShoppingOrder.list(params), model:[shoppingOrderInstanceCount: ShoppingOrder.count()]
    }

    def shopping_cart(){}//implementar
    def checkout(){}//implementar
    def show(ShoppingOrder shoppingOrderInstance) {
        respond shoppingOrderInstance
    }

    def create() {
        respond new ShoppingOrder(params)
    }

    @Transactional
    def save(ShoppingOrder shoppingOrderInstance) {
        if (shoppingOrderInstance == null) {
            notFound()
            return
        }

        if (shoppingOrderInstance.hasErrors()) {
            respond shoppingOrderInstance.errors, view:'create'
            return
        }

        shoppingOrderInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'shoppingOrderInstance.label', default: 'ShoppingOrder'), shoppingOrderInstance.id])
                redirect shoppingOrderInstance
            }
            '*' { respond shoppingOrderInstance, [status: CREATED] }
        }
    }

    def edit(ShoppingOrder shoppingOrderInstance) {
        respond shoppingOrderInstance
    }

    @Transactional
    def update(ShoppingOrder shoppingOrderInstance) {
        if (shoppingOrderInstance == null) {
            notFound()
            return
        }

        if (shoppingOrderInstance.hasErrors()) {
            respond shoppingOrderInstance.errors, view:'edit'
            return
        }

        shoppingOrderInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ShoppingOrder.label', default: 'ShoppingOrder'), shoppingOrderInstance.id])
                redirect shoppingOrderInstance
            }
            '*'{ respond shoppingOrderInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ShoppingOrder shoppingOrderInstance) {

        if (shoppingOrderInstance == null) {
            notFound()
            return
        }

        shoppingOrderInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ShoppingOrder.label', default: 'ShoppingOrder'), shoppingOrderInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'shoppingOrderInstance.label', default: 'ShoppingOrder'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
