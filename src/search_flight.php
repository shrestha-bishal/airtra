<br>

<form>
    <div class="input-group">
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <label class="radio-inline"><input type="radio" name="optradioo" value="roundtrip">Round Trip</label>
      <label class="radio-inline"><input type="radio" name="optradio" value="oneway">One way</label> 

      <br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <label>From:    
        <select name="From" class="form-control" placeholder="From" required>
          <option value="kathmandu">Kathmandu</option>
          <option value="pokhara">Pokhara</option>
          <option value="lukla">Lukla</option>
          <option value="bharatpur">Bharatpur</option>
          <option value="nepalgunj">Nepalgunj</option>
          <option value="jumla">Jumla</option>
          <option value="talcha">Talcha (Mugu)</option>
          <option value="simikot">Simikot (Humla)</option>
          <option value="bhadrapur">Bhadrapur</option>
          <option value="biratnagar">Biratnagar</option>
          <option value="simara">Simara</option>
          <option value="janakpur">Janakpur</option>
          <option value="tumlingtar">Tumlingtar</option>
          <option value="bhojpur">Bhojpur</option>
          <option value="phalpu">Phalpu</option>
          <option value="kangeldanda">Kangel Danda</option>
          <option value="lamidanda">Lamidanda</option>
          <option value="jufal">Jufal</option>
        </select>     
      </label>
      <label>To:
        <select name="To" class="form-control"  placeholder="To" required>
          <option value="pokhara">Pokhara</option>
          <option value="lukla">Lukla</option>
          <option value="kathmandu">Kathmandu</option>
          <option value="nepalgunj">Nepalgunj</option>
          <option value="bharatpur">Bharatpur</option>
          <option value="simara">Simara</option>
          <option value="biratnagar">Biratnagar</option>
          <option value="jumla">Jumla</option>
          <option value="talcha">Talcha (Mugu)</option>
          <option value="simikot">Simikot (Humla)</option>
          <option value="bhadrapur">Bhadrapur</option>
          <option value="bhojpur">Bhojpur</option>
          <option value="phalpu">Phalpu</option>
          <option value="kangeldanda">Kangel Danda</option>
          <option value="lamidanda">Lamidanda</option>
          <option value="janakpur">Janakpur</option>
          <option value="tumlingtar">Tumlingtar</option>
          <option value="jufal">Jufal</option>
        </select>   
      </label>

      <label>Depart:</label> <input type="Date" name="Depart" style="height: 20px">
      <label>Return:</label> <input type="Date" name="Return" style="height: 20px">
      <label>Guests:
        <select name="Guests" class="form-control"  placeholder="Guests" required>
          <option value="1">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
          <option value="4">4</option>
          <option value="5">5</option>
        </select>    
      </label>
      <label>Cabin Class:
        <select name="seatclass" class="form-control" placeholder="seatclass" required>
          <option value="firstclass">First Class</option>
          <option value="businessclass">Business Class</option>
          <option value="economyclass">Economy Class</option>           
        </select>        
      </label>

      <button type="submit" name="searchflights" class="btn">Search Flights</button>
  </div>
</form>
<br>

<?php include('search_flight_server.php'); ?>