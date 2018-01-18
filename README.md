<h3>Ruby on Rails test project</h3>

As part of our consideration for new hires to our Ruby on Rails dev team, we ask that you
complete the following project to the best of your ability.

Project Specs - Make a barebones messaging board

<ul>
<li>Users can register and then must be authenticated before logging in (we use
Devise). Users should have an email (used for logging in), and a first and last name
at a minimum. You can add things like a description or “about me” if you’d like.
</li>
<li>Users can create posts (title, body, author (user_id), etc).</li>
<li>Users can comment on other users’ posts (Comments have post_id, body, author
(user_id)).</li>
<li>There is a posts index page that lists all posts (for entire site). This is the ‘homepage’.
This should display a list of posts with the title and the author’s name.</li>
<li>Order posts with most recent posts at the top of the page.</li>
<li>There is a post show page, that shows a single post. Underneath the post are all the
comments, ordered by date created (oldest at the top)</li>
<li>When commenting on a post, you have freedom as far as the layout goes, you can
just have a little box that opens, and the user types in their comment. You can also
use a modal, etc, whatever you want. It makes more sense to have the form for
adding a comment be close to where the comment will end up.</li>
</ul>

Project Requirements
<ul>
<li>Upload finished project to github</li>
<li>Use latest version of Rails</li>
<li>Use ruby 2.2 or newer</li>
<li>Rspec unit tests minimum of 10</li>
<li>One feature test (rspec/capybara)</li>
<li>If not specified, use whatever gem(s) get the job done</li>
 </ul>

Bonus features (not required, but nice to have)
<ul>
<li>Style using Bootstrap</li>
<li>Add a modal for creating a new post</li>
<li>Add a modal for logging in</li>
<li>Paginate posts#index and/or posts#show (comments)</li>
<li>Upload to heroku (make an account for free)</li>
  </ul>
