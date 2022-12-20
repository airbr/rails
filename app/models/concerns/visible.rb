module Visible
    extend ActiveSupport::Concern
  
    VALID_STATUSES = ['loud', 'subdued', 'quiet', 'public', 'private', 'archived']
  
    included do
      validates :status, inclusion: { in: VALID_STATUSES }
    end
  
    class_methods do
      def loud_count
        where(status: 'loud').count
      end

      def subdued_count
        where(status: 'subdued').count
      end

      def archived_count
        where(status: 'archived').count
      end
    end
  
    def archived?
      status == 'archived'
    end
  end
  