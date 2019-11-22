Booking.destroy_all
Space.destroy_all
User.destroy_all

users_attributes = [
        { email: Faker::Internet.email,
          first_name: Faker::Name.first_name,
          last_name: Faker::Name.last_name,
          password: '123456',
          password_confirmation: '123456'
        },
        { email: Faker::Internet.email,
          first_name: Faker::Name.first_name,
          last_name: Faker::Name.last_name,
          password: '123456',
          password_confirmation: '123456'
        },
        { email: Faker::Internet.email,
          first_name: Faker::Name.first_name,
          last_name: Faker::Name.last_name,
          password: '123456',
          password_confirmation: '123456'
        },
        { email: Faker::Internet.email,
          first_name: Faker::Name.first_name,
          last_name: Faker::Name.last_name,
          password: '123456',
          password_confirmation: '123456'
        },
        { email: Faker::Internet.email,
          first_name: Faker::Name.first_name,
          last_name: Faker::Name.last_name,
          password: '123456',
          password_confirmation: '123456'
        },
        { email: Faker::Internet.email,
          first_name: Faker::Name.first_name,
          last_name: Faker::Name.last_name,
          password: '123456',
          password_confirmation: '123456'
        },
        { email: Faker::Internet.email,
          first_name: Faker::Name.first_name,
          last_name: Faker::Name.last_name,
          password: '123456',
          password_confirmation: '123456'
        }
      ]

users_attributes.each { |user| User.create!(user) }

puts "Added users"

space1 = Space.new(
            name: 'Eclat Creative',
            description: "Eclat Creative is very pleased to offer two permanent residency opportunities! The two secure 12m2 offices are bound by bright white bricks and carpeted, with built-in storage and are large enough for several desks and your designer elements. As an Eclat Creative resident you will have 24/7 access to your office and unlimited access to the studio facilities outside of regular bookings. This presents an exceptional opportunity for a local photographer, blogger or content developer located in the inner West to align their business with a well-established and fully-fitted, professional photography studio! Everything you need is right here and ready to go! Let's discuss Eclat Creative becoming your new HQ!",
            max_capacity: (1..20).to_a.sample*10,
            price_per_day: (30..90).to_a.sample*10,
            # user_id: (1..users_attributes.size).to_a.sample,
            user_id: User.all.sample.id,
            # address: "Rudi-Dutschke-Straße 26, 10969 Berlin",
            address: ['Berlin', 'Paris', 'London', 'Budapest'].sample)
# space1.remote_photo_url = "https://images.unsplash.com/photo-1522202176988-66273c2fd55f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1951&q=80"
space1.save!

space2 = Space.new(
            name: 'The Cowork Gallery',
            description: "Conceived by partners Nicholas Sammut, MD and ECD of Toast Creative, and Abraham Mikhail, Founder of Fone King, The co-work gallery is built on values of innovation, wellbeing and collaboration: a genuine combination of lifestyle benefits embedded in a co-working space philosophy.Workspaces are designed to balance creativity and business efficiency. Regular curated events nurture and grow the community. Members benefit from the proximity to the central business district as well as the vibrancy of Surry Hills’ cultural hub.",
            max_capacity: (1..20).to_a.sample*10,
            max_availability: (1..15).to_a.sample*10,
            price_per_day: (30..90).to_a.sample*10,
            # user_id: User.second.id
            user_id: User.all.sample.id,
            # address: "Wallstr. 9 GF, 1st Floor, 10179 Berlin",
            address: ['Berlin', 'Paris', 'London', 'Budapest'].sample)
# space2.remote_photo_url = "http://thespaces.com/wp-content/uploads/2015/04/Gallery_Small-1.jpg"
space2.save!

space3 = Space.new(
            name: "Blank Space",
            description: "BlankSpace offers 24/7 secure access, fibre internet and kitchen facilities with tea and coffee provided, as well as a projector, table tennis table, meeting area and studio backdrops for film and video. The studio has a modern loft feel with high ceilings and natural light. BlankSpace is also a pet-friendly space.",
            max_capacity: (1..20).to_a.sample*10,
            max_availability: (1..15).to_a.sample*10,
            price_per_day: (30..90).to_a.sample*10,
            # user_id: (1..users_attributes.size).to_a.sample,
            user_id: User.all.sample.id,
            # address: "Dresdener Str. 36, 10178 Berlin"
            address: ['Berlin', 'Paris', 'London', 'Budapest'].sample)
# space3.remote_photo_url = "https://images.unsplash.com/photo-1531973576160-7125cd663d86?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80"
space3.save!

space4 = Space.new(
            name: "The Henley Club",
            description: "Henley Club is a members' social club, conveniently located in the heart of the CBD. The space is available for hire until 5pm, 7 days a week. It has a rustic 'cabin' feel and is perfect for workshops, off-site meetings and small get-togethers of up to 20 people.",
            max_capacity: (1..20).to_a.sample*10,
            max_availability: (1..15).to_a.sample*10,
            price_per_day: (30..90).to_a.sample*10,
            # user_id: (1..users_attributes.size).to_a.sample,
            user_id: User.all.sample.id,
            address: ['Berlin', 'Paris', 'London', 'Budapest'].sample)
# space4.remote_photo_url = "https://images.unsplash.com/photo-1528238646472-f2366160b6c1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1651&q=80"
space4.save!

space5 = Space.new(
            name: "Multi-use area at Indigo Project",
            description: "We are opening up our beautiful sunlit converted warehouse space to events and short-term hires. Nestled on the second floor of The Indigo Project psychology and creative hub, this exciting space is now available for hire. A former 1800s corset factory, stretching to 150sqm with exposed beams and woodgrain floors, this is a rare urban haven just two minutes walk from Central Station. ",
            max_capacity: (1..20).to_a.sample*10,
            max_availability: (1..15).to_a.sample*10,
            price_per_day: (30..90).to_a.sample*10,
            # user_id: (1..users_attributes.size).to_a.sample,
            user_id: User.all.sample.id,
            address: ['Berlin', 'Paris', 'London', 'Budapest'].sample)
# space5.remote_photo_url = "https://images.unsplash.com/photo-1527192491265-7e15c55b1ed2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80"
space5.save!

space6 = Space.new(
            name: "Event space 99",
            description: "Event space 99 space has played host to many exciting meet-ups, workshops, strategy kick off sessions and client functions. ",
            max_capacity: (1..20).to_a.sample*10,
            max_availability: (1..15).to_a.sample*10,
            price_per_day: (30..90).to_a.sample*10,
            # user_id: (1..users_attributes.size).to_a.sample,
            user_id: User.all.sample.id,
            address: ['Berlin', 'Paris', 'London'].sample)
# space6.remote_photo_url = "https://images.unsplash.com/photo-1517502884422-41eaead166d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3025&q=80"
space6.save!

space7 = Space.new(
            name: "Blush Creative",
            description: "Suitable for: beauty room, office for a team of 4-6 people, medical/consulting room, healing/spiritual therapies, botox, cosmetic injectors, meeting room, treatment room, graphic design, small workshops, small training room, beauticians, makeup artists, massage therapists, tattoo artists, eyebrow tattooing, chiropractors, creative suite and lots more.",
            max_capacity: (1..20).to_a.sample*10,
            max_availability: (1..15).to_a.sample*10,
            price_per_day: (30..90).to_a.sample*10,
            # user_id: (1..users_attributes.size).to_a.sample,
            user_id: User.all.sample.id,
            address: ['Berlin', 'Paris', 'London', 'Budapest'].sample)
# space7.remote_photo_url = "https://images.unsplash.com/photo-1497366811353-6870744d04b2?ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80"
space7.save!

space8 = Space.new(
            name: "Sunshine club",
            description: "Beautiful recently-renovated light-filled room with a large window, white walls and floor tiles. Room does not have a sink but there is one close by. Signage in the window may be available for long-term tenants (subject to approval).",
            max_capacity: (1..20).to_a.sample*10,
            max_availability: (1..15).to_a.sample*10,
            price_per_day: (30..90).to_a.sample*10,
            # user_id: (1..users_attributes.size).to_a.sample,
            user_id: User.all.sample.id,
            address: ['Berlin', 'Paris', 'London', 'Budapest'].sample)
# space8.remote_photo_url = "https://images.unsplash.com/photo-1497215728101-856f4ea42174?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80"
space8.save!

space9 = Space.new(
            name: "Manufactory Community",
            description: "If you need a professional space to present your ideas or hold creative workshops, we have light-filled meeting rooms, fully-equipped with audio visual system for groups up to 12 people. WiFi and self-serve coffee station available.",
            max_capacity: (1..20).to_a.sample*10,
            max_availability: (1..15).to_a.sample*10,
            price_per_day: (30..90).to_a.sample*10,
            # user_id: (1..users_attributes.size).to_a.sample,
            user_id: User.all.sample.id,
            address: ['Berlin', 'Paris', 'London', 'Budapest'].sample)
# space9.remote_photo_url = "https://images.unsplash.com/photo-1516062423079-7ca13cdc7f5a?ixlib=rb-1.2.1&auto=format&fit=crop&w=1661&q=80"
space9.save!

space10 = Space.new(
            name: "Hacker Space",
            description: "Hacker Space is a co-working space created by Artisan, a recruitment agency established 19 years ago with a strong reputation for outstanding creative services to the creative industry. In a large and light-filled building we offer a flexible range of memberships for creative freelancers and entrepreneurs to co-work.",
            max_capacity: (1..20).to_a.sample*10,
            max_availability: (1..15).to_a.sample*10,
            price_per_day: (30..90).to_a.sample*10,
            # user_id: (1..users_attributes.size).to_a.sample,
            user_id: User.all.sample.id,
            address: ['Berlin', 'Paris', 'London', 'Budapest'].sample)
# space10.remote_photo_url = "https://img.theculturetrip.com/x/smart/wp-content/uploads/2017/09/img_6499-min.jpg"
space10.save!

puts "Added spaces"

bookings_attributes = [
           {
              start_date: Time.parse("01-11-2019"),
              end_date: Time.parse("30-11-2019"),
              # space_id: (1..spaces.size).to_a.sample,
              space_id: Space.all.sample.id,
              # user_id: (1..users_attributes.size).to_a.sample
              user_id: User.all.sample.id,
              number_of_persons: (1..10).to_a.sample*10,
              confirmation: true
              # user_id: (1..4).to_a.sample
           },
           {
              start_date: Time.parse("01-12-2019"),
              end_date: Time.parse("31-12-2019"),
              # space_id: (1..spaces.size).to_a.sample,
              space_id: Space.all.sample.id,
              # user_id: (1..users_attributes.size).to_a.sample
              user_id: User.all.sample.id,
              number_of_persons: (1..10).to_a.sample*10,
              confirmation: true
              # user_id: (1..4).to_a.sample
           },
           {
              start_date: Time.parse("15-11-2019"),
              end_date: Time.parse("31-12-2019"),
              # space_id: (1..spaces.size).to_a.sample,
              space_id: Space.all.sample.id,
              # user_id: (1..users_attributes.size).to_a.sample
              user_id: User.all.sample.id,
              number_of_persons: (1..10).to_a.sample*10,
              confirmation: true
              # user_id: (1..4).to_a.sample
           },
           {
              start_date: Time.parse("01-11-2019"),
              end_date: Time.parse("15-11-2019"),
              # space_id: (1..spaces.size).to_a.sample,
              space_id: Space.all.sample.id,
              # user_id: (1..users_attributes.size).to_a.sample
              user_id: User.all.sample.id,
              number_of_persons: (1..10).to_a.sample*10,
              confirmation: true
              # user_id: (1..4).to_a.sample
           },
           {
              start_date: Time.parse("01-10-2019"),
              end_date: Time.parse("30-11-2019"),
              # space_id: (1..spaces.size).to_a.sample,
              space_id: Space.all.sample.id,
              # user_id: (1..users_attributes.size).to_a.sample
              user_id: User.all.sample.id,
              number_of_persons: (1..10).to_a.sample*10,
              confirmation: true
              # user_id: (1..4).to_a.sample
           },
           {
              start_date: Time.parse("10-10-2019"),
              end_date: Time.parse("30-11-2019"),
              # space_id: (1..spaces.size).to_a.sample,
              space_id: Space.all.sample.id,
              # user_id: (1..users_attributes.size).to_a.sample
              user_id: User.all.sample.id,
              number_of_persons: (1..10).to_a.sample*10,
              confirmation: true
              # user_id: (1..4).to_a.sample
           },
           {
              start_date: Time.parse("20-10-2019"),
              end_date: Time.parse("20-11-2019"),
              # space_id: (1..spaces.size).to_a.sample,
              # space_id: Space.all.sample.id,
              space_id: Space.all.sample.id,
              # user_id: (1..users_attributes.size).to_a.sample
              user_id: User.all.sample.id,
              number_of_persons: (1..10).to_a.sample*10,
              confirmation: true
              # user_id: (1..4).to_a.sample
           },
           {
              start_date: Time.parse("12-11-2019"),
              end_date: Time.parse("25-12-2019"),
              # space_id: (1..spaces.size).to_a.sample,
              # space_id: Space.all.sample.id,
              space_id: Space.all.sample.id,
              # user_id: (1..users_attributes.size).to_a.sample
              user_id: User.all.sample.id,
              number_of_persons: (1..10).to_a.sample*10,
              confirmation: true
              # user_id: (1..4).to_a.sample
           },
         ]

bookings_attributes.each {|b| Booking.create!(b) }

puts "Added bookings"
