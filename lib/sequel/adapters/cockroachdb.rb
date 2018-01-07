require 'sequel/adapters/postgres'

module Sequel
  module Cockroach
    class Database < Sequel::Postgres::Database
      set_adapter_scheme :cockroach
      set_adapter_scheme :cockroachdb

      # Cockroach DB only supports one savepoint
      def supports_savepoints?
        false
      end

      private

      def dataset_class_default
        Dataset
      end
    end

    class Dataset < Sequel::Postgres::Dataset
      def default_timestamp_format
        "'%Y-%m-%d %H:%M:%S%N%:z'"
      end
    end
  end
end

