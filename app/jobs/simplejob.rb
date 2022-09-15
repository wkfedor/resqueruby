class SimpleJob
  @queue = :simple

  def self.perform(str)
    # здесь делаем важные и полезные вещи

      puts "Job is done! #{str}"
  end
end