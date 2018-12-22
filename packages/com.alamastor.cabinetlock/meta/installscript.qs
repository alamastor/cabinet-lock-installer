function Component() {}
Component.prototype.isDefault = function() {
  return true;
};
Component.prototype.createOperations = function() {
  try {
    component.createOperations();
  } catch (e) {
    print(e);
  }
  if (installer.value("os") === "x11") {
    component.addOperation(
      "CreateDesktopEntry",
      "CabinetLock.desktop",
      "Version=1.0\nType=Application\nTerminal=false\nExec=@TargetDir@/cabinetlock\nName=CabinetLock\nIcon=@TargetDir@/logo.png"
    );
    component.addOperation(
      "Copy",
      "@HomeDir@/.local/share/applications/CabinetLock.desktop",
      "@HomeDir@/Desktop/CabinetLock.desktop"
    );
  }
};
