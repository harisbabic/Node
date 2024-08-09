import { Workbox } from 'workbox-window';

export function register() {


    if ('serviceWorker' in navigator) {
        const wb = new Workbox('sw.js');
        console.log(wb);


        wb.addEventListener('installed', event => {
          if (event.isUpdate) {
            if (window.confirm('New content is available! Click OK to refresh.')) {
              window.location.reload();
            }
          }
        });

        wb.register();
      }
    }
