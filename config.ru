# frozen_string_literal: true

require "./app"

require "prometheus/middleware/collector"
require "prometheus/middleware/exporter"

use Prometheus::Middleware::Collector
use Prometheus::Middleware::Exporter

run Sinatra::Application
