package com.onb.ozmness

import grails.test.*

class TechnologyTests extends GrailsUnitTestCase {
   
    def technology, pTechnology

    protected void setUp() {
        super.setUp()
        pTechnology = new Technology(parentTechnology:null)
        technology = new Technology(parentTechnology:pTechnology)
    }

    protected void tearDown() {
        super.tearDown()
    }

 

   
   void testIfFetchedWithoutParent() {
   
        mockDomain(Technology , [technology])
       
       assertFalse  null == technology.parentTechnology

    
    }
    }
