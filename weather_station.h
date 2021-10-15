<!DOCTYPE html>
    <style> 
        body{ 
            height: 100%; 
            width: 100%; 
            overflow: hidden; 
      background-color: AliceBlue;
      color: SlateGrey;
      text-align: center;
      -webkit-text-stroke-width: .8px;
      -webkit-text-stroke-color: black;
        } 
  
        .box-wrapper { 
            height: 100vh; 
            width: 100vw; 
            display: flex; 
            flex-direction: column; 
        } 
  
        #box1 { 
            padding: 10px; 
            height: 50px; 
            line-height: 30px; 
            border: solid 10px LightGrey;
      font-size: 50px;
      -webkit-text-stroke-width: 1px;
    
        } 
  
        #box2 { 
            height: 200px; 
            padding: 8px; 
            border: solid 10px Blue;
      font-size: 22px;
        } 
  
        #box3 { 
            padding: 10px; 
            flex-grow: 1; 
            display: flex; 
            flex-direction: row; 
            border: solid 10px LightGrey; 
      font-size: 22px;
      
        } 
  
        #box4 { 
            flex-grow: 1; 
            border: solid 10px Blue;
        } 
  
        .middle-column { 
            flex-grow: 1; 
            display: flex; 
            flex-direction: column; 
  
        } 
  
        .middle-column div { 
            flex-grow: 1; 
            margin: 0 0px; 
            border: solid 10px Blue; 
        } 
  
        .middle-column div+div { 
            margin-top: 0px 
        } 
  
        #box8 { 
            flex-grow: 1; 
            border: solid 10px Blue; 
      font-size: 22px;
        } 
    </style> 

  
<body> 

<form name="" method="post" action="/cgi-bin/post.cgi">

    <div class="box-wrapper"> 
        <div id="box1"> 
            Solar Weather Station
        </div>
  
        <div id="box2"> 
    
    
        
                    <label for="">Current Temperature
    <br><br>
    <label>Temperature: 70 C
    
    <br><br>
        </div> 
  
        <div id="box3"> 
            <div id="box4"> 
    <sup>  Current Humidity</sup>
    <br>
    <br><br><br>
                <label>Humidity: 30%
    <br><br>
                
    <br><br>
    
    </select>
            </div> 
            <div class="middle-column"> 
                <div id="box5">
        <sup>Barometric Pressure</sup>
        <br> 
        <br><br><br>
                    <label for="">Pressure:  29.5 
        
                
            </div> 
        </div> 
  
    </div> 
</form>
</body> 
  
</html> 