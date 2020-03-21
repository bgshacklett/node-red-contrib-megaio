const { spawnSync } = require('child_process');

function defaultTask(cb) { cb(); }

function run(cb) {
  spawnSync(
         'docker',
         ['build', '-t', 'test-node', '.'],
         { stdio: 'inherit' },
       );

  spawnSync(
         'docker',
         ['run', '--rm', '-it', '-p', '1880:1880', 'test-node'],
         { stdio: 'inherit' },
       );

  cb();
}

exports.default = defaultTask;
exports.run = run;
