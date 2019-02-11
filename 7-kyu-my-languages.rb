# Level - 7 Kyu

# Given a dictionary/hash/object of languages and your respective test results,
# return the list of languages where your test score is at least 60, in descending order of the results.

def my_languages(results)
  empty = []
  sorted = results.sort_by {|k, v| v}.reverse

      sorted.select {|key, value|
          empty.push(key) if value >= 60
    }

    return empty
end

my_languages({"Java" => 10, "Ruby" => 80, "Python" => 65})
my_languages({"Hindi" => 60, "Dutch" => 93, "Greek" => 71})
my_languages({"C++" => 50, "ASM" => 10, "Haskell" => 20})
