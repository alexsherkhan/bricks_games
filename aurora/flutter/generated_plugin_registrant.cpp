//
//  Generated file. Do not edit.
//
#include <flutter/flutter_aurora.h>
#include <audioplayers_aurora/audioplayers_aurora_plugin.h>
#include <package_info_plus_aurora/package_info_plus_aurora_plugin.h>

#include "generated_plugin_registrant.h"

namespace aurora {
void RegisterPlugins() {
  flutter::PluginRegistrar* registrar = GetPluginRegistrar();
  AudioplayersAuroraPlugin::RegisterWithRegistrar(registrar);
  PackageInfoPlusAuroraPlugin::RegisterWithRegistrar(registrar);
}
}
