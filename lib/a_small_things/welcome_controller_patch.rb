module ASmallThings
	module WelcomeControllerPatch
	  def self.included(base) # :nodoc:
	    base.extend(ClassMethods)
	    base.send(:include, InstanceMethods)

		# Same as typing in the class 
	    base.class_eval do
	    	alias_method_chain :index, :a_small_things
		end	
	    

	  end

	  module ClassMethods   
	    # Methods to add to the Issue class
	  end

	  module InstanceMethods
	    # Methods to add to specific issue objects
	    def index_with_a_small_things
	    	index_without_a_small_things
	    	redirect_to url_for(:controller => 'my', :action => 'page')
	    end
	  end
	end
end

