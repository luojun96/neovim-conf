local setup, ctrlp = pcall(require, "ctrlp")
if not setup then
  return
end

ctrlp.Setup()
