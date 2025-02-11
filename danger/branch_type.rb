class BranchType
  def self.is_feature(branch_name)
    branch_name.include?(feature)
  end

  def self.is_bugfix(branch_name)
    branch_name.include?(bugfix)
  end

  def self.is_task(branch_name)
    branch_name.include?(task)
  end

  def self.is_tech(branch_name)
    branch_name.include?(tech)
  end

  def self.is_develop(branch_name)
    branch_name == develop
  end

  def self.is_release(branch_name)
    branch_name.include?(release)
  end

  # Список валидных типов source-веток
  def self.valid_sources
    [feature, bugfix, task, tech]
  end

  private

  def self.feature
    "feature"
  end

  def self.bugfix
    "bugfix"
  end

  def self.task
    "task"
  end

  def self.tech
    "tech"
  end

  def self.develop
    "develop"
  end

  def self.release
    "release-candidate"
  end
end
