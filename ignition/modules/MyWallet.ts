import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";

export default buildModule("MyWalletModule", (m) => {
  const counter = m.contract("Counter");

  m.call(counter, "incBy", [5n]);

  return { counter };
});
