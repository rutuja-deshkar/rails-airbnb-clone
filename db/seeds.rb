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
            price_per_person: (30..90).to_a.sample*10,
            # user_id: (1..users_attributes.size).to_a.sample,
            user_id: User.all.sample,
            address: ['Berlin', 'Paris', 'London', 'Budapest'].sample)
space1.remote_photo_url = "https://remote.co/wp-content/uploads/2016/06/coworking_space.png"
space1.save!

space2 = Space.new(
            name: 'The Cowork Gallery',
            description: "Conceived by partners Nicholas Sammut, MD and ECD of Toast Creative, and Abraham Mikhail, Founder of Fone King, The co-work gallery is built on values of innovation, wellbeing and collaboration: a genuine combination of lifestyle benefits embedded in a co-working space philosophy.Workspaces are designed to balance creativity and business efficiency. Regular curated events nurture and grow the community. Members benefit from the proximity to the central business district as well as the vibrancy of Surry Hills’ cultural hub.",
            max_capacity: (1..20).to_a.sample*10,
            price_per_person: (30..90).to_a.sample*10,
            # user_id: User.second.id
            user_id: User.all.sample,
            address: ['Berlin', 'Paris', 'London', 'Budapest'].sample)
space2.remote_photo_url = "http://thespaces.com/wp-content/uploads/2015/04/Gallery_Small-1.jpg"
space2.save!

space3 = Space.new(
            name: "Blank Space",
            description: "BlankSpace offers 24/7 secure access, fibre internet and kitchen facilities with tea and coffee provided, as well as a projector, table tennis table, meeting area and studio backdrops for film and video. The studio has a modern loft feel with high ceilings and natural light. BlankSpace is also a pet-friendly space.",
            max_capacity: (1..20).to_a.sample*10,
            price_per_person: (30..90).to_a.sample*10,
            # user_id: (1..users_attributes.size).to_a.sample,
            user_id: User.all.sample,
            address: ['Berlin', 'Paris', 'London', 'Budapest'].sample)
space3.remote_photo_url = "http://www.societyworkspace.com/wp-content/uploads/2014/07/Society-Co-Working-Phoenix-Downtown-1-2-1024x799.jpg"
space3.save!

space4 = Space.new(
            name: "The Henley Club",
            description: "Henley Club is a members' social club, conveniently located in the heart of the CBD. The space is available for hire until 5pm, 7 days a week. It has a rustic 'cabin' feel and is perfect for workshops, off-site meetings and small get-togethers of up to 20 people.",
            max_capacity: (1..20).to_a.sample*10,
            price_per_person: (30..90).to_a.sample*10,
            # user_id: (1..users_attributes.size).to_a.sample,
            user_id: User.all.sample,
            address: ['Berlin', 'Paris', 'London', 'Budapest'].sample)
space4.remote_photo_url = "https://www.sohohouse.com/system/files/032015/54f83b26f7c88bc2100001c1/xlarge/30_10_14_barber_and_parlour_9654final.jpg?1427294352"
space4.save!

space5 = Space.new(
            name: "Multi-use area at Indigo Project",
            description: "We are opening up our beautiful sunlit converted warehouse space to events and short-term hires. Nestled on the second floor of The Indigo Project psychology and creative hub, this exciting space is now available for hire. A former 1800s corset factory, stretching to 150sqm with exposed beams and woodgrain floors, this is a rare urban haven just two minutes walk from Central Station. ",
            max_capacity: (1..20).to_a.sample*10,
            price_per_person: (30..90).to_a.sample*10,
            # user_id: (1..users_attributes.size).to_a.sample,
            user_id: User.all.sample,
            address: ['Berlin', 'Paris', 'London', 'Budapest'].sample)
space5.remote_photo_url = "https://unsplash.com/photos/dZxQn4VEv2M"
space5.save!

space6 = Space.new(
            name: "Event space 99",
            description: "Event space 99 space has played host to many exciting meet-ups, workshops, strategy kick off sessions and client functions. ",
            max_capacity: (1..20).to_a.sample*10,
            price_per_person: (30..90).to_a.sample*10,
            # user_id: (1..users_attributes.size).to_a.sample,
            user_id: User.all.sample,
            address: ['Berlin', 'Paris', 'London'].sample)
space6.remote_photo_url = "https://www.thebulletin.be/sites/default/files/styles/big_article/public/coworking.jpg"
space6.save!

space7 = Space.new(
            name: "Blush Creative",
            description: "Suitable for: beauty room, office for a team of 4-6 people, medical/consulting room, healing/spiritual therapies, botox, cosmetic injectors, meeting room, treatment room, graphic design, small workshops, small training room, beauticians, makeup artists, massage therapists, tattoo artists, eyebrow tattooing, chiropractors, creative suite and lots more.",
            max_capacity: (1..20).to_a.sample*10,
            price_per_person: (30..90).to_a.sample*10,
            # user_id: (1..users_attributes.size).to_a.sample,
            user_id: User.all.sample,
            address: ['Berlin', 'Paris', 'London', 'Budapest'].sample)
space7.remote_photo_url = "https://d2lgtvdb6hylu5.cloudfront.net/439bc45e66f52eb860b9a12bf7768cf9716af9d0/12379.560x398x0.jpg"
space7.save!

space8 = Space.new(
            name: "Sunshine club",
            description: "Beautiful recently-renovated light-filled room with a large window, white walls and floor tiles. Room does not have a sink but there is one close by. Signage in the window may be available for long-term tenants (subject to approval).",
            max_capacity: (1..20).to_a.sample*10,
            price_per_person: (30..90).to_a.sample*10,
            # user_id: (1..users_attributes.size).to_a.sample,
            user_id: User.all.sample,
            address: ['Berlin', 'Paris', 'London', 'Budapest'].sample)
space8.remote_photo_url = "https://images.financialexpress.com/2019/03/co-working-space1a.jpg"
space8.save!

space9 = Space.new(
            name: "Manufactory Community",
            description: "If you need a professional space to present your ideas or hold creative workshops, we have light-filled meeting rooms, fully-equipped with audio visual system for groups up to 12 people. WiFi and self-serve coffee station available.",
            max_capacity: (1..20).to_a.sample*10,
            price_per_person: (30..90).to_a.sample*10,
            # user_id: (1..users_attributes.size).to_a.sample,
            user_id: User.all.sample,
            address: ['Berlin', 'Paris', 'London', 'Budapest'].sample)
space9.remote_photo_url = "https://mitvergnuegen.com/wp-content/uploads/2018/10/02_m-coworking-microsoft_the-digital-eatery-680x383.jpg"
space9.save!

space10 = Space.new(
            name: "Hacker Space",
            description: "Hacker Space is a co-working space created by Artisan, a recruitment agency established 19 years ago with a strong reputation for outstanding creative services to the creative industry. In a large and light-filled building we offer a flexible range of memberships for creative freelancers and entrepreneurs to co-work.",
            max_capacity: (1..20).to_a.sample*10,
            price_per_person: (30..90).to_a.sample*10,
            # user_id: (1..users_attributes.size).to_a.sample,
            user_id: User.all.sample,
            address: ['Berlin', 'Paris', 'London', 'Budapest'].sample)
space10.remote_photo_url = "https://img.theculturetrip.com/x/smart/wp-content/uploads/2017/09/img_6499-min.jpg"
space10.save!

puts "Added spaces"

bookings_attributes = [
           {
              start_date: Time.parse("01-11-2019"),
              end_date: Time.parse("30-11-2019"),
              # space_id: (1..spaces.size).to_a.sample,
              space_id: Space.all.sample,
              # user_id: (1..users_attributes.size).to_a.sample
              user_id: User.all.sample,
              # user_id: (1..4).to_a.sample
           },
           {
              start_date: Time.parse("01-12-2019"),
              end_date: Time.parse("31-12-2019"),
              # space_id: (1..spaces.size).to_a.sample,
              space_id: Space.all.sample,
              # user_id: (1..users_attributes.size).to_a.sample
              user_id: User.all.sample,
              # user_id: (1..4).to_a.sample
           },
           {
              start_date: Time.parse("15-11-2019"),
              end_date: Time.parse("31-12-2019"),
              # space_id: (1..spaces.size).to_a.sample,
              space_id: Space.all.sample,
              # user_id: (1..users_attributes.size).to_a.sample
              user_id: User.all.sample,
              # user_id: (1..4).to_a.sample
           },
           {
              start_date: Time.parse("01-11-2019"),
              end_date: Time.parse("15-11-2019"),
              # space_id: (1..spaces.size).to_a.sample,
              space_id: Space.all.sample,
              # user_id: (1..users_attributes.size).to_a.sample
              user_id: User.all.sample,
              # user_id: (1..4).to_a.sample
           },
           {
              start_date: Time.parse("01-10-2019"),
              end_date: Time.parse("30-11-2019"),
              # space_id: (1..spaces.size).to_a.sample,
              space_id: Space.all.sample,
              # user_id: (1..users_attributes.size).to_a.sample
              user_id: User.all.sample,
              # user_id: (1..4).to_a.sample
           },
           {
              start_date: Time.parse("10-10-2019"),
              end_date: Time.parse("30-11-2019"),
              # space_id: (1..spaces.size).to_a.sample,
              space_id: Space.all.sample,
              # user_id: (1..users_attributes.size).to_a.sample
              user_id: User.all.sample,
              # user_id: (1..4).to_a.sample
           },
           {
              start_date: Time.parse("20-10-2019"),
              end_date: Time.parse("20-11-2019"),
              # space_id: (1..spaces.size).to_a.sample,
              # space_id: Space.all.sample,
              space_id: Space.all.sample,
              # user_id: (1..users_attributes.size).to_a.sample
              user_id: User.all.sample,
              # user_id: (1..4).to_a.sample
           },
           {
              start_date: Time.parse("12-11-2019"),
              end_date: Time.parse("25-12-2019"),
              # space_id: (1..spaces.size).to_a.sample,
              # space_id: Space.all.sample,
              space_id: Space.all.sample,
              # user_id: (1..users_attributes.size).to_a.sample
              user_id: User.all.sample,
              # user_id: (1..4).to_a.sample
           },
         ]

bookings_attributes.each {|b| Booking.create!(b) }

puts "Added bookings"
