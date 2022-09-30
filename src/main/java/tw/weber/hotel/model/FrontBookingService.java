package tw.weber.hotel.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class FrontBookingService {
	@Autowired
	private RoomRepository rRepo;
	
	@Autowired
	private HSearchRepository hsRepo;
	
	public List<Room> find(){
		return rRepo.find();
	}
	
	public List<HotelforSearch> crazy(String dateStart,String dateEnd,String destination,int number){
		return hsRepo.crazy(dateStart,dateEnd,destination,number);
	}
}
