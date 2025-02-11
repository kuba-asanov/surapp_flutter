require './danger/branch_type'

# def target_branch
#   git.branch_for_merge
# end

# def source_branch
#   git.branch_for_head
# end

### Анализ MR на предупреждений и ошибки
###
def validate_analyze_report()
  flutter_analyze_report = File.read("flutter_analyze_report.txt")
  info_count = 0
  
  flutter_analyze_report.each_line do |line|
    info_count += 1 if line.match?(/^\[info\]/)
  end
  
  if info_count > 0
    warn("Обнаружено #{info_count} \"info\" предупреждений анализатора, необходимо их исправить")
  end
  
  if flutter_analyze_report.match?(/^\[warning\]/)
    fail("Обнаружены \"warning\" предупреждения анализатора, необходимо их исправить")
  end
  
  if flutter_analyze_report.match?(/^\[error\]/)
    fail("Обнаружены ошибки анализатора, необходимо их исправить")
  end
end

### Валидация PR на размеры
###
def validate_pr_size()
  # return if BranchType.is_feature(source_branch) && BranchType.is_develop(target_branch)

  max_pr_length = 15000
  warn_pr_length = 900
  
  ignored_change_files_regexp = Regexp.union([/\.lock\z/, /\.arb\z/])
  
  lineChanges = 0
  
  git.diff.stats[:files].each do |file, stats|
    if ignored_change_files_regexp.match(file)
      print "Ignoring file for PR calculation #{file}"
    else
      lineChanges += stats[:insertions] - stats[:deletions]
    end
  end
  
  if lineChanges > max_pr_length
    fail "PR большой - (#{lineChanges} строк изменено). Необходимо разбить на несколько PRов. Как вариант - разбить PR по различным архитектурным слоям"
  elsif lineChanges > warn_pr_length
    warn "PR большой - (#{lineChanges} строк изменено). Необходимо разбить на несколько PRов. Как вариант - разбить PR по различным архитектурным слоям"
  end
end

# Проверка длины названия PR
fail("Название Pull Request должно быть более подробным!") if github.pr_title.length < 10

# Проверка, начинается ли название PR с заглавной буквы
fail("Название Pull Request должно начинаться с заглавной буквы!") unless github.pr_title =~ /^[A-ZА-Я]/

# Проверка, добавлены ли тесты для новых файлов
has_tests = git.modified_files.any? { |file| file.include?("/test/") }
warn("Похоже, что не добавлены новые тесты") unless has_tests

# Флоу дангера
validate_pr_size()
validate_analyze_report()
