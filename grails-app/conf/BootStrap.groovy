import com.reinid.domain.setup.AgentProfessionalDesignation;
import com.reinid.domain.setup.PropertyType 
import com.reinid.domain.setup.RealEstateAgency 
import com.reinid.security.Role 
import com.reinid.security.User 
import com.reinid.security.UserRole 

class BootStrap {
	def springSecurityService
	def init = { servletContext ->
		if (!Role.count()) {
			def userRole = Role.findByAuthority("ROLE_USER") ?: new Role(authority:"ROLE_USER").save(flush:true)
			def adminRole = Role.findByAuthority("ROLE_ADMIN") ?: new Role(authority:"ROLE_ADMIN").save(flush:true)
			def browseRole = Role.findByAuthority("ROLE_AGENT") ?: new Role(authority:"ROLE_AGENT").save(flush:true)
			def usRole = Role.findByAuthority("ROLE_BANK") ?: new Role(authority:"ROLE_BANK").save(flush:true)
			
			if (!User.count()) {
				def adminUser =	new User(username:"admin",
				password : springSecurityService.encodePassword("mala1313"),
				firstName : "Bozidar",
				lastName : "Dangubic",
				enabled:true)
				if (adminUser.validate()) {
					adminUser.save(flush:true)
					UserRole adminUserRole = UserRole.create(adminUser, adminRole)
				}
			}
		}
		
		if (!PropertyType.count()) {
			new PropertyType(name:'Single Family').save(flush:true)
			new PropertyType(name:'Duplex').save(flush:true)
			new PropertyType(name:'Triplex').save(flush:true)
			new PropertyType(name:'Multi Family').save(flush:true)
			new PropertyType(name:'Townhouse').save(flush:true)
			new PropertyType(name:'Condominium').save(flush:true)
			new PropertyType(name:'Cooperative').save(flush:true)
			new PropertyType(name:'Mobile Home').save(flush:true)
		}
		
		if (!RealEstateAgency.count()) {
			new RealEstateAgency(name:'Remax').save(flush:true)
			new RealEstateAgency(name:'Century 21').save(flush:true)
			new RealEstateAgency(name:'Long and Foster').save(flush:true)
		}
		
		if (!AgentProfessionalDesignation.count()) {
			new AgentProfessionalDesignation(code:'ABR', name:'Accredited Buyer Representative').save(flush:true)
			new AgentProfessionalDesignation(code:'ABRM', name:'Accredited Buyer Representative Manager').save(flush:true)
			new AgentProfessionalDesignation(code:'ALC', name:'Accredited Land Consultant').save(flush:true)
			new AgentProfessionalDesignation(code:'CCIM', name:'Certified Commercial Investment Member').save(flush:true)
			new AgentProfessionalDesignation(code:'CPM', name:'Certified Property Manager').save(flush:true)
			new AgentProfessionalDesignation(code:'CRS', name:'Certified Residential Specialist').save(flush:true)
			new AgentProfessionalDesignation(code:'CRE', name:'Counselor of Real Estate').save(flush:true)
			new AgentProfessionalDesignation(code:'GAA', name:'General Accredited Appraiser').save(flush:true)
			new AgentProfessionalDesignation(code:'GD', name:'Green Designation').save(flush:true)
			new AgentProfessionalDesignation(code:'GRI', name:'Graduate Realtor Institute').save(flush:true)
			new AgentProfessionalDesignation(code:'PMN', name:'Performance Manager Network').save(flush:true)
			new AgentProfessionalDesignation(code:'RCE', name:'Realtor Association Certified Executive').save(flush:true)
			new AgentProfessionalDesignation(code:'RAA', name:'Residential Accredited Appraiser').save(flush:true)
			new AgentProfessionalDesignation(code:'SRES', name:'Senior Real Estate Specialist').save(flush:true)
			new AgentProfessionalDesignation(code:'SLDR', name:'Society of Industrial and Office Realtor').save(flush:true)
		}
	}
	
	def destroy = {
	}
}
