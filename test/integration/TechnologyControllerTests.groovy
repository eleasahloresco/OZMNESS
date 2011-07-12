package com.onb.ozmness
import com.onb.ozmness.*
import com.onb.ozmness.controller.*
import grails.test.*

class TechnologyControllerTests extends grails.test.ControllerUnitTestCase {

    void testSomething() {
        def controller = newInstance()
        mockDomain(Technology)
        controller.something()
    }
}
