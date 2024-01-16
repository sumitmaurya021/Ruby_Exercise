# Task Manager CLI

# Create a command-line task manager that allows users to add, delete, and manage their tasks.
# Users should be able to categorize tasks, set deadlines, mark tasks as completed, and view their
# upcoming tasks. Consider adding features like priority levels, due date reminders, and task
# statistics.

require 'date'
class Task
  attr_accessor :description, :category, :priority, :due_date, :completed

  def initialize(description, category, priority, due_date)
    @description = description
    @category = category
    @priority = priority
    @due_date = due_date
    @completed = false
  end

  def mark_as_completed
    @completed = true
    if @completed == true
      puts "Successful"
    else
      puts "Unsuccessful"
    end
  end

  def due_date_near?
    return false unless due_date
    days_until_due = (due_date - Date.today).to_i
    days_until_due > 0 && days_until_due <= 3
  end
end

class TaskManager
  attr_accessor :tasks

  def initialize
    @tasks = []
  end

  def add_task(task)
    @tasks << task
  end

  def delete_task(index)
    if index >= 0 && index < @tasks.length
      @tasks.delete_at(index)
    else
    puts "Invalid index. Task not Deleted."
    end
  end


  def update_task(index, updated_task)
    def update_task(index, updated_task)
      if index >= 0 && index < @tasks.length
        @tasks[index] = updated_task
      else
        puts "Invalid index. Task not updated."
      end
    end
  end

  def mark_task_as_completed(index)
    if index >= 0 && index < @tasks.length
      task = @tasks[index]
      task.mark_as_completed
    else
      puts "Invalid index. Task not Marked as Completed."
    end
  end


  def display_tasks
    puts "-" * 107
    puts "|" + " No".ljust(10) + "|" + " Description".ljust(41) + "|" + " Category".ljust(16) + "|" + " Priority".ljust(11) + "|" + " Due Date".ljust(11) + "|" + " Completed".ljust(10) + " |"
    @tasks.each_with_index do |task, index|
      puts "|" + " #{index + 1}".ljust(10) + "|" + " #{task.description.ljust(40)}" + "|" + " #{task.category.ljust(15)}" + "|" + " #{task.priority.ljust(10)}" + "|" + " #{task.due_date.nil? ? 'N/A' : task.due_date.to_s.ljust(10)}" + "|" + " #{task.completed ? 'Done' : 'Pending'}".ljust(10) + " |"
    end
    puts "-" * 107
  end

  def display_statistics
    puts "+" + "-" * 58 + "+"
    puts "|" + " Task Statistics".center(58) + "|"
    puts "+" + "-" * 58 + "+"
    puts "|" + "Total Tasks:".ljust(25) + "#{tasks.length}".rjust(33) + "|"
    puts "|" + "Completed Tasks:".ljust(25) + "#{tasks.count(&:completed)}".rjust(33) + "|"
    puts "|" + "Pending Tasks:".ljust(25) + "#{tasks.count { |task| !task.completed }}".rjust(33) + "|"
    puts "+" + "-" * 58 + "+"
    display_priority_distribution
    display_upcoming_deadlines
  end

  def display_priority_distribution
    priority_counts = Hash.new(0)

    tasks.each { |task| priority_counts[task.priority] += 1 }
    puts "+" + "-" * 58 + "+"
    puts "|".ljust(20) + "Priority Distribution:".ljust(39) + "|"
    puts "+" + "-" * 58 + "+"
    priority_counts.each do |priority, count|
      puts "|" + " - #{priority.capitalize} Priority:".ljust(25) + "#{count} tasks".rjust(33) + "|"
    end
    puts "+" + "-" * 58 + "+"
  end
  def display_upcoming_deadlines
    upcoming_deadlines = tasks.select do |task|
      if !task.completed && task.due_date_near?
        true
      else
        false
      end
    end

    if upcoming_deadlines.empty?
      puts "|" + "No upcoming deadlines.".center(58) + "|"
    else
      puts "+" + "-" * 58 + "+"
      puts "|" + " Upcoming Deadlines".center(58) + "|"
      puts "+" + "-" * 58 + "+"
      puts "|" + " Task Description".ljust(45) + "|" + " Due Date".ljust(12) + "|"
      upcoming_deadlines.each do |task|
        puts "|" + " #{task.description.ljust(44)}" + "|" + " #{task.due_date}".ljust(10) + " |"
      end
      puts "+" + "-" * 58 + "+"
    end
  end
end

def main
  task_manager = TaskManager.new

  example_task1 = Task.new("Ruby", "Work", "High", Date.new(2024, 1, 16))
  example_task2 = Task.new("Python", "Personal", "Low", Date.new(2024, 1, 17))
  example_task3 = Task.new("JavaScript", "Private", "Medium", Date.new(2024, 1, 18))
  task_manager.add_task(example_task1)
  task_manager.add_task(example_task2)
  task_manager.add_task(example_task3)

  loop do
    puts "-"*12 + "[=> Task Manager Menu <=]" + "-"*13
    puts "|".ljust(50) + "|"
    puts "|" + " " * 18 + "1. Add Task".ljust(31) + "|"
    puts "|".ljust(50) + "|"
    puts "|" + " " * 18 + "2. Delete Task".ljust(31) + "|"
    puts "|".ljust(50) + "|"
    puts "|" + " " * 18 + "3. Update Task".ljust(31) + "|"
    puts "|".ljust(50) + "|"
    puts "|" + " " * 18 + "4. Mark Task as Completed".ljust(31) + "|"
    puts "|".ljust(50) + "|"
    puts "|" + " " * 18 + "5. Display Tasks".ljust(31) + "|"
    puts "|".ljust(50) + "|"
    puts "|" + " " * 18 + "6. Display Statistics".ljust(31) + "|"
    puts "|".ljust(50) + "|"
    puts "|" + " " * 18 + "7. Due Date Reminder".ljust(31) + "|"
    puts "|".ljust(50) + "|"
    puts "|" + " " * 18 + "8. Exit".ljust(31) + "|"
    puts "|".ljust(50) + "|"
    puts "-"*38 + "" + "-"*13
    print "Enter your choice: "

    choice = gets.chomp.to_i
    puts "Selected Operation : #{choice}"
    case choice
    when 1
      task = create_task
      task_manager.add_task(task)
      puts "Task added successfully!"
    when 2
      task_manager.display_tasks
      print "Enter the index of the task to delete: "
      index = gets.chomp.to_i - 1
      task_manager.delete_task(index)
      puts "Task deleted successfully!"
    when 3
      task_manager.display_tasks
      print "Enter the index of the task to update: "
      index = gets.chomp.to_i - 1
      updated_task = create_task
      task_manager.update_task(index, updated_task)
      puts "Task updated successfully!"
    when 4
      task_manager.display_tasks
      print "Enter the index of the task to mark as completed: "
      index = gets.chomp.to_i - 1
      task_manager.mark_task_as_completed(index)
    when 5
      task_manager.display_tasks
    when 6
      task_manager.display_statistics
    when 7
      task_manager.display_upcoming_deadlines
    when 8
      puts "Exiting Task Manager. Goodbye!"
      break
    else
      puts "Invalid choice. Please enter a number between 1 and 8."
    end
  end
end

def create_task
  puts
  puts
  puts "-"*38 + "" + "-"*13
  print "Enter task Name: "
  description = gets.chomp

  print "Enter task category: "
  category = gets.chomp

  print "Enter task priority (High/Medium/Low): "
  priority = gets.chomp.capitalize

  print "Enter due date (YYYY-MM-DD, press Enter for no due date): "
  due_date_str = gets.chomp
  if due_date_str.empty?
    due_date = nil
  else
    begin
      due_date = Date.parse(due_date_str)
    rescue
      due_date = nil
    end
  end
  Task.new(description, category, priority, due_date)
end
main
