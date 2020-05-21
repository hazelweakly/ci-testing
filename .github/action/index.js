const child_process = require("child_process");
const process = require("process");

const toInpt = (n) => `INPUT_${n.replace(/ /g, "_").toUpperCase()}`;
const getInput = (n) => (process.env[toInpt(n)] || "").trim();

try {
  const sshKey = getInput("ssh-key");
  process.stdout.write(`sshKey is: ${sshKey}`);
  process.stdout.write("env is:");
  process.stdout.write(env);
} catch (error) {
  process.stderr.write(error.message);
  process.exitCode = 1;
}
