require 'rack/rewrite'
 
use Rack::Rewrite do
  r301 %r{/recipes/(.*)}, 'https://stitchs-recipes.timja.dev/recipes/$1'
end
 
run lambda { |env| [301, {'Location'=>'https://stitchs-recipes.timja.dev/recipes/'}, StringIO.new("")] }
