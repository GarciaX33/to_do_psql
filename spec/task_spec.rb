require('spec_helper')

describe(Task) do
  describe(".all") do
    it("is empty at first") do
      expect(Task.all()).to(eq([]))
    end
  end

  describe(".all") do
    it("will order tasks by due date") do
      task1 = Task.new({:description => "learn SQL", :list_id => 1, :due_date => "2017-9-18"})
      task2 = Task.new({:description => "learn SQL", :list_id => 1, :due_date => "2017-9-17"})
      task1.save()
      task2.save()
      expect(Task.all).to(eq([task2, task1]))
    end
  end

  describe("#save") do
    it("adds a task to the array of saved tasks") do
      test_task = Task.new({:description => "learn SQL", :list_id => 1, :due_date => "2017-9-18"})
      test_task.save()
      expect(Task.all()).to(eq([test_task]))
    end
  end

  describe("#description") do
    it("lets you read the description out") do
      test_task = Task.new({:description => "learn SQL", :list_id => 1, :due_date => "2017-9-18"})
      expect(test_task.description()).to(eq("learn SQL"))
    end
  end

  describe("#list_id") do
    it("lets you read the list ID out") do
      test_task = Task.new({:description => "learn SQL", :list_id => 1, :due_date => "2017-9-18"})
      expect(test_task.list_id()).to(eq(1))
    end
  end

  describe("#==") do
    it("is the same task if it has the same description and list ID") do
      task1 = Task.new({:description => "learn SQL", :list_id => 1, :due_date => "2017-9-18"})
      task2 = Task.new({:description => "learn SQL", :list_id => 1, :due_date => "2017-9-18"})
      expect(task1).to(eq(task2))
    end
  end
end
