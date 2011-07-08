package com.onb.ozmness
	
import java.text.SimpleDateFormat;

import grails.test.*

class RatingControllerTests extends ControllerUnitTestCase {
    def simpleDateFormat

    protected void setUp() {
        super.setUp()
	mockDomain(Employee)
	mockDomain(Technology)
	mockDomain(Rating)
	simpleDateFormat = new SimpleDateFormat("ddMMyyyy")
    }

    protected void tearDown() {
        super.tearDown()
    }

    void testRatingIfSaved() {
	def rating = new Rating(value: 3,
				comment: "Good Job",
				dateOfCreation: simpleDateFormat.parse("07082011"),
				creator: new Employee(),
				rated: new Employee(),
				technology: new Technology())
	rating.save()
	assertNotNull("If the rating is saved, there should be an ID stored in the database", rating.id)
    }
}
