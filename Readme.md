```
 ____  _____ ____ _____                           _
|  _ \| ____/ ___|_   _|_ _ _   _ _ __ __ _ _ __ | |_
| |_) |  _| \___ \ | |/ _` | | | | '__/ _` | '_ \| __|
|  _ <| |___ ___) || | (_| | |_| | | | (_| | | | | |_
|_| \_\_____|____/ |_|\__,_|\__,_|_|  \__,_|_| |_|\__|

```

---

- It's the future!  In the olden days... waitstaff needed to keep track of a party's order by hand!
- A client has requested an application to help!
- Here is what they wrote:

```
Dear Developer,

I want an application so our waitstaff can manage our food orders...

Overall... an employee should be able to...
  a: select a party of customers
  b: select food items the customers have ordered
  c: see a receipt

We'll keep thinking about it over the next few days and send more details when they come up.

Best,
Gadoe
```

##It's up to you!  What does this entail?  
- Some starting ideas:

####Food Item: An item of food on the menu (aka menu item)
- name?
- cuisine type?
- what is the price?
- any allergens?
- more info?

####Party: A single group of people
- table number?
- number of guests?
- did they pay yet?
- more info?

####Responsive:
- This almost seems... like the mobile version is more important than the full-screen.  Of course the full-screen needs to look good but... if waitstaff will be using this larger on their phones...  that mobile version is hugely important.  Consider designing for "mobile first".

---

###Technologies:
- Sinatra Web Application
- Postgresql Database

---

###By Monday 11:59pm:
- ERD:  Draw out an ERD for the application.
- Wireframe: Sketch out a few ideas about how you'd want the application to look on a screen and a phone
- Set up a github repository for the application
  - Add instructors as collaborators:
    - `emilylordahl`
    - `rapala61`
    - `amadden80`
  - Set up a Sinatra application, (i.e. config/database.yml config.ru etc.)
    - Should include some test routes, styles.css, scripts.js etc.

###By Thursday 9:00am
- All necessary C.R.U.D. behaviors complete and demonstrable.

###By Friday 9:00am
- MVP complete
  - All core functionality is complete

###By Sunday 9:00pm
- Deliverable project

###Monday 9:00am
- Brief Project Demonstrations


---

```
Hello Developer,

Andrew sent me some questions.  I answered them below

Best,
Gadoe


Q: What kind of RESTaurant?
A: “I have a Taco styles AND a BBQ style!  Don’t worry about it!  I’ll add my own foods!”

Q: Copy of menu?
A:  “Changes too much!  Just through any food in there of now?”

Q: Layout of Tables?
A: “Again… since I have a couple restaurants… I’ll need to move things around in practice.  Feel free to make it feel right to you.”

Q: Can we just ‘pick’ what kind of RESTaurant it is?
A: “Yes… if it’s delicious!!!”

Q: Full list of waitstaff?
A: “I need to hire new people ALL the time!  Let’s not worry about this for now.  No need to worry about who is placing the orders and such.  Let’s just assume I’ll assign waitstaff to tables so we don’t need to build that into the system.”

Q:  How can we be in contact?
A:  “I am SUPER busy… so most contact will happen through Andrew.  You can email me at specificassembly@gmail.com      But… don’t count on it.  Feel free to send a message but Andrew will probably be a faster source of information.”

```
