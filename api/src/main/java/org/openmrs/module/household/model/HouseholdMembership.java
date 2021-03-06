/**
 * 
 */
package org.openmrs.module.household.model;

import java.util.Date;
import org.openmrs.BaseOpenmrsData;
import org.openmrs.Person;

/**
 * @author Ampath Developers
 * 
 */
public class HouseholdMembership extends BaseOpenmrsData {

	private Integer id;
	private Person householdMembershipMember;
	private Household householdMembershipGroups;
	private boolean householdMembershipHeadship;
	private Date startDate;
	private Date endDate;
	private String retireReason;
	private String resumeReason;
	private String providerId;
	private boolean quasi;

	public String getProviderId() {
		return providerId;
	}

	public void setProviderId(String providerId) {
		this.providerId = providerId;
	}

	/**
	 * @return the id
	 */
	public Integer getId() {
		return id;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(Integer id) {
		this.id = id;
	}

	/**
	 * @return the householdMembershipMember
	 */
	public Person getHouseholdMembershipMember() {
		return householdMembershipMember;
	}

	/**
	 * @param householdMembershipMember
	 *            the householdMembershipMember to set
	 */
	public void setHouseholdMembershipMember(Person householdMembershipMember) {
		this.householdMembershipMember = householdMembershipMember;
	}

	/**
	 * @return the householdMembershipGroups
	 */
	public Household getHouseholdMembershipGroups() {
		return householdMembershipGroups;
	}

	/**
	 * @param householdMembershipGroups
	 *            the householdMembershipGroups to set
	 */
	public void setHouseholdMembershipGroups(Household householdMembershipGroups) {
		this.householdMembershipGroups = householdMembershipGroups;
	}

	/**
	 * @return the householdMembershipHeadship
	 */
	public boolean isHouseholdMembershipHeadship() {
		return householdMembershipHeadship;
	}

	/**
	 * @param householdMembershipHeadship
	 *            the householdMembershipHeadship to set
	 */
	public void setHouseholdMembershipHeadship(
			boolean householdMembershipHeadship) {
		this.householdMembershipHeadship = householdMembershipHeadship;
	}

	/**
	 * @return the startDate
	 */
	public Date getStartDate() {
		return startDate;
	}

	/**
	 * @param startDate
	 *            the startDate to set
	 */
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	/**
	 * @return the endDate
	 */
	public Date getEndDate() {
		return endDate;
	}

	/**
	 * @param endDate
	 *            the endDate to set
	 */
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	/**
	 * 
	 * @return retireReason
	 */
	public String getRetireReason() {
		return retireReason;
	}

	/**
	 * 
	 * @param retireReason
	 */
	public void setRetireReason(String retireReason) {
		this.retireReason = retireReason;
	}

	/**
	 * 
	 * @return resumeReason
	 */
	public String getResumeReason() {
		return resumeReason;
	}

	/**
	 * 
	 * @param resumeReason
	 */
	public void setResumeReason(String resumeReason) {
		this.resumeReason = resumeReason;
	}

	/**
	 * @return the quasi status
	 */
	public boolean getQuasi() {
		return quasi;
	}

	/**
	 * @param quasi
	 */
	public void setQuasi(boolean quasi) {
		this.quasi = quasi;
	}

}
