## Lnprototest Runner for LDK-Sample

This is a runner script for LDK-Sample. It can be used to run **Lnprototest** tests against a **LDK-Sample** node.

### Usage

To run against Lnprototest BOLT tests:

1. **Clone Lnprototest:**

   ```bash
   git clone https://github.com/rustyrussell/lnprototest.git
   ```

2. **Clone LDK-Sample:**

   ```bash
   git clone https://github.com/Psycho-Pirate/ldk-sample.git ldk-sample-lnprototest
   ```

3. **Build LDK-Sample:**

   ```bash
   cd ldk-sample
   cargo build
   ```

4. **Set environment variables:**

   Do not include the `target/debug/ldk-sample`, this will be automatically added by the runner itself

   ```bash
   export LDK_SRC=[path to ldk-sample repo]
   ```

5. **Run the tests:**

   Go inside the lnprototest root directory

   ```bash
   poetry shell
   poetry install
   pip install ldk-lnprototest
   make check PYTEST_ARGS='--runner=ldk_lnprototest.Runner --log-cli-level=info -s -x'
   ```
