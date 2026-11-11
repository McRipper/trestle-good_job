Trestle::Engine.routes.draw do

  mount GoodJob::Engine => "/good_job/web", constraints: Trestle::Auth::Constraint.new
end
