# A test task for the Parity company

> Implement an API with three endpoints.\
1.1 Accepts json with a picture (base64) and a description of the picture as text \
1.2 Gives a list of pictures with a description \
1.3 Deletes an image from the database by ID \
> 
> Implement an interface that communicates with the API from point 1 \
2.1 Form for sending a picture with a description \
2.2 List of all images with the delete button \
Technologies: Python 3, Django (DRF), Vue.js, Any SQL database.
> 
> Notes: \
Clean and simple code is expected \
The result should be posted on GitHub

Docker has been added for a concise launch

## Run locally

### Run with Docker Compose

> :warning: **Linux Users**: Running docker-compose may require using sudo command if current user is not in the docker group

> :warning: **Windows Users**: Check that your `git config core.autocrlf` is `false` or set it to `false` before starting, otherwise build/run may fail

```shell script
    make install -> make run
```

### Useful Tips

- use http://localhost:8000/api/images/ to Django API
- use http://localhost:5173 to Vue.js
- use `make logs` to see logs