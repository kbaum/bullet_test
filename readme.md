Test application for the [Bullet](https://github.com/flyerhzm/bullet) gem
Reproduces bullet [issue](https://github.com/flyerhzm/bullet/issues/174)

There is an n+1 that is not being picked up by bullet.  Seems to me the problem is with nested associations that have inverse_of defined.  

#Run the unit test:

    bundle
    rake db:migrate
    rake test

The [test](https://github.com/kbaum/bullet_test/blob/master/test/unit/user_test.rb) will pass but it should fail.


#From the app:

    bundle
    rake db:migrate db:seed
    rails s

Then hit: [http://localhost:3000/user/kbaum/posts](http://localhost:3000/user/kbaum/posts)

There will be no bullet alert and there should be as [comments are not being included](http://vts-monosnap.s3.amazonaws.com/kbaum_bullet_test__ruby__20449_2014-07-10_15-52-53_2014-07-10_15-53-03.jpg).

Now hit [http://localhost:3000/posts](http://localhost:3000/posts).  Here bullet properly raises an error.



