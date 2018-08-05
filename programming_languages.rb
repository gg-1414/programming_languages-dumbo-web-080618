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
    language_data.each do |language, data|
      # language_data[language][:style] = []
      if style == :oo
        language_data[language][:style] = [style]
      end 
       binding.pry
      if style == :functional 
       
        if language_data[language][:style].values.include?(:oo)
          language_data[language][:style] << style
        else
          language_data[language][:style] = style
        end 
      end 
    end 
    new_hash_holder << language_data
    new_hash_holder.each do |element|
      element.each do |language, data|
        new_hash[language] = data
      end 
    end
  end 
  puts new_hash
end

reformat_languages(languages)


