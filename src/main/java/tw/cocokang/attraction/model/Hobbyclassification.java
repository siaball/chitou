package tw.cocokang.attraction.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Hobbyclassification")
public class Hobbyclassification {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	@Column(name = "prefer_id")
	private Integer preferid;
	
	@Column(name = "prefer_name")
	private String preferName;
	
	@Column(name = "prefer_descrip")
	private String preferDescrip;
	
//	@OneToMany(mappedBy = "hobbyclassification")
//	private List<Attraction> cAttractions;
	
	public Hobbyclassification() {
		
	}

	public Integer getPreferid() {
		return preferid;
	}

	public void setPreferid(Integer preferid) {
		this.preferid = preferid;
	}

	public String getPreferName() {
		return preferName;
	}

	public void setPreferName(String preferName) {
		this.preferName = preferName;
	}

	public String getPreferDescrip() {
		return preferDescrip;
	}

	public void setPreferDescrip(String preferDescrip) {
		this.preferDescrip = preferDescrip;
	}

//	public List<Attraction> getcAttractions() {
//		return cAttractions;
//	}
//
//	public void setcAttractions(List<Attraction> cAttractions) {
//		this.cAttractions = cAttractions;
//	}

}
