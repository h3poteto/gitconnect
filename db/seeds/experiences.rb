# coding: utf-8
ActiveRecord::Base.connection.execute("TRUNCATE experiences")
Experience.create([
  { term: "指定なし", min_year: 0 },
  { term: "1年以上", min_year: 1 },
  { term: "2年以上", min_year: 2 },
  { term: "3年以上", min_year: 3 },
  { term: "4年以上", min_year: 4 },
  { term: "5年以上", min_year: 5 }
])
