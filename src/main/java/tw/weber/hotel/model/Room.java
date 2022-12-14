package tw.weber.hotel.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import tw.cocokang.attraction.model.Hobbyclassification;

@Entity
@Table(name = "room")
public class Room implements Serializable {
	
	@Id
	@Column(name = "roomID")
	@GeneratedValue(strategy =  GenerationType.IDENTITY)
	private int roomID;
	
	@JsonBackReference
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "roomstyleid")
	private RoomStyle style;
	
	public Room() {
		
	}

	public Room(int roomID, RoomStyle style) {
		super();
		this.roomID = roomID;
		this.style = style;
	}

	public int getRoomID() {
		return roomID;
	}

	public void setRoomID(int roomID) {
		this.roomID = roomID;
	}

	public RoomStyle getStyle() {
		return style;
	}

	public void setStyle(RoomStyle style) {
		this.style = style;
	}
	
}
