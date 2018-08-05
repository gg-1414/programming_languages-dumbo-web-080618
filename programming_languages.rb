require 'pry'

languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}

def reformat_languages(languages)
  new_hash_holder = [] 
  new_hash = {}
  languages.each do |style, language_data|
    new_hash_holder << language_data
    new_hash_holder.each do |element|
      element.each do |language, data|
        new_hash[language] = data
      end 
      new_hash.each do |language, data|
        new_hash[language][:style] = [style]
      end 
    end
  end 
  puts new_hash
end

reformat_languages(languages)


