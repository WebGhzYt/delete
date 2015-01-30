class Apply < ActiveRecord::Base
	# belongs_to :follower, class_name: "User"
 #  	belongs_to :followed, class_name: "User"
 	belongs_to :post
  	validates :user_id, presence: true
  	validates :post_id, presence: true
  	def self.apply_post(post_id,user_id)
	    Apply.where(:post_id => post_id, user_id: user_id).first
	end
end
