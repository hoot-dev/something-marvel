module CharactersHelper
  def character_image(character)
    character[:thumbnail][:path] + '.' + character[:thumbnail][:extension]
  end
end
