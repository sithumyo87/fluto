

class RandomUser{
  String gender,email,phone,cell,nat;
  Name name;
  Login login;
  Dob dob;
  Registered registered;
  Id id;
  Picture picture;


  RandomUser({this.gender,this.name,this.email,this.login,this.dob,this.registered,this.phone,this.cell,this.nat,this.id,this.picture});

  factory RandomUser.from(dynamic data){
  Name name = Name.from(data['name']);
  Login login = Login.from(data['login']);
  Dob dob = Dob.from(data['dob']);
  Id id = Id.from(data['id']);
  Picture picture = Picture.from(data['picture']);
   Registered registered = Registered.from(data['registered']);
    return RandomUser(
      gender: data['gender'],
      name: name,
      email: data['email'],
      login: login,
      dob:dob,
      registered:registered,
      phone:data['phone'],
      cell:data['cell'],
      nat:data['nat'],
      id:id,
      picture:picture
    );
  }
}

class Name{
  String title,first,last;

  Name({this.title,this.first,this.last});
  factory Name.from(dynamic data){
    return Name(
      title:data['title'],
      first:data['first'],
      last:data['last'],
    );
  }
}

class Location{
  Street street;
  String city,state,country,postcode;
  Coordinates coordinates;
  Timezone timezone;
  Location({this.street,this.state,this.country,this.postcode,this.coordinates,this.timezone});
  factory Location.from(dynamic data){
    Street street = Street.from(data['street']);
    Coordinates coordinates = Coordinates.from(data['coordinates']);
    Timezone timezone = Timezone.from(data['timezone']);

    String postCode =  "";
    if(data['postcode'] is int){
      postCode =data['postcode'].toString();
    }else{
      postCode = data['postcode'];
    }
    return Location(
      street: street,
      state: data['state'],
      country: data['country'],
      postcode: postCode,
      coordinates: coordinates,
      timezone: timezone,
    );
  }
}

class Street{
    int number;
    String name;


    Street({this.number,this.name});

    factory Street.from(dynamic data){
      return Street(
        number:data['number'],
        name: data['name'],
        
      );
    }
}

class Coordinates{
    String latitude,longitude;


    Coordinates({this.latitude,this.longitude});

    factory Coordinates.from(dynamic data){
      return Coordinates(
        latitude:data['latitude'],
        longitude: data['longitude'],
        
      );
    }
}

class Timezone{
    String offset,description;


    Timezone({this.offset,this.description});

    factory Timezone.from(dynamic data){
      return Timezone(
        offset:data['offset'],
        description: data['description'],
        
      );
    }
}


class Login{
    String uuid,username,password,salt,md5,sha1,sha256;


    Login({this.uuid,this.username,this.password,this.salt,this.md5,this.sha1,this.sha256});

    factory Login.from(dynamic data){
      return Login(
        uuid:data['uuid'],
        username:data['username'],
        password:data['password'],
        salt:data['salt'],
        md5:data['md5'],
        sha1:data['sha1'],
        sha256:data['sha256'],
        
      );
    }
}

class Dob{
    String date;
    int age;


    Dob({this.date,this.age});

    factory Dob.from(dynamic data){
      return Dob(
        date:data['date'],
        age: data['age'],
        
      );
    }
}


class Registered{
    String date;
    int age;


    Registered({this.date,this.age});

    factory Registered.from(dynamic data){
      return Registered(
        date:data['date'],
        age: data['age'],
        
      );
    }
}

class Id{
    String name,value;


    Id({this.name,this.value});

    factory Id.from(dynamic data){
      return Id(
        name:data['name'],
        value: data['value'],
        
      );
    }
}

class Picture{
    String large,medium,thumbnail;


    Picture({this.large,this.medium,this.thumbnail});

    factory Picture.from(dynamic data){
      return Picture(
        large:data['large'],
        medium: data['medium'],
        thumbnail: data['thumbnail'],
        
      );
    }
}

