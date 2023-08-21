module.exports = {
    default: {
      parallel: 1,
      //format: ['html:./report/cucumber-report.html'],
      format: ['json:./report/cucumber-report.json','html:./report/cucumber-report.html'],
      paths: ['./src/features/*.feature','./src/features/**/*.feature'],
      require: ['./src/stepDefinitions/*.js','./src/hooks/*.js'],
    }
  }