if Rails.env.development?
  %w[vehicle car truck].each do |c|
    require_dependency File.join("app","models","#{c}.rb")
  end
end
