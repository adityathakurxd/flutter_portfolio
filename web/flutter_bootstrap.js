{{flutter_js}}
{{flutter_build_config}}

const loading = document.createElement('div');
document.body.appendChild(loading);
loading.textContent = "Loading Entrypoint...";
_flutter.loader.load({
  onEntrypointLoaded: async function(engineInitializer) {
    loading.textContent = "Initializing engine...";
    const appRunner = await engineInitializer.initializeEngine();

    loading.textContent = "Running app...";
    await appRunner.runApp();
  }
});