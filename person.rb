# This person is a padavan, wich has completed and unfinished tasks
class Person
  attr_accessor :tasks

  def initialize
    @tasks = []
  end

  def add_task(task)
    tasks << task
  end

  def speak_your_task
    completed_task.each do |name, completed|
      status = completed ? 'completed!' : 'to do..'
      puts "Task: #{name}, status: #{status}"
    end
  end

  def completed_task
    tasks.select { |_name, completed| completed }
  end
end

task = [
  ['Complete a task for Mace Darek', true],
  ['Kiss princess Leia', false],
  ['Destroy a the Blackstar', true],
  ['Feed Chewbacca', false],
  ['Repair R2D2', false],
  ['Become a real jedi', true]
]

padavan = Person.new
task.each do |single_task|
  padavan.add_task(single_task)
end
padavan.speak_your_task
