package br.ufscar.isell



import grails.test.mixin.*
import spock.lang.*

@TestFor(RoleSecController)
@Mock(RoleSec)
class RoleSecControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.roleSecInstanceList
            model.roleSecInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.roleSecInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def roleSec = new RoleSec()
            roleSec.validate()
            controller.save(roleSec)

        then:"The create view is rendered again with the correct model"
            model.roleSecInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            roleSec = new RoleSec(params)

            controller.save(roleSec)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/roleSec/show/1'
            controller.flash.message != null
            RoleSec.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def roleSec = new RoleSec(params)
            controller.show(roleSec)

        then:"A model is populated containing the domain instance"
            model.roleSecInstance == roleSec
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def roleSec = new RoleSec(params)
            controller.edit(roleSec)

        then:"A model is populated containing the domain instance"
            model.roleSecInstance == roleSec
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/roleSec/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def roleSec = new RoleSec()
            roleSec.validate()
            controller.update(roleSec)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.roleSecInstance == roleSec

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            roleSec = new RoleSec(params).save(flush: true)
            controller.update(roleSec)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/roleSec/show/$roleSec.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/roleSec/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def roleSec = new RoleSec(params).save(flush: true)

        then:"It exists"
            RoleSec.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(roleSec)

        then:"The instance is deleted"
            RoleSec.count() == 0
            response.redirectedUrl == '/roleSec/index'
            flash.message != null
    }
}
