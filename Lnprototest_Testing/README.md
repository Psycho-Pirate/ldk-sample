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
   git clone https://github.com/Psycho-Pirate/ldk-sample.git
   ```

3. **Build LDK-Sample:**

   ```bash
   cd ldk-sample
   cargo build
   ```

4. **Set environment variables:**

   ```bash
   export LDK_SRC=[path to ldk-sample repo]
   export PYTHONPATH=$PYTHONPATH:[path to lnprototest repo]
   ```

5. **Install the runner:**

   ```bash
   pip install ldk-lnprototest
   ```

6. **Run the tests:**

   ```bash
   pytest [path to lnprototest repo]/tests --runner=ldk_lnprototest.Runner --log-cli-level=DEBUG
   ```

