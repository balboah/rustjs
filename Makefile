PROJECT?=rustjs

.PHONY: rust
rust:
	wasm-pack build --target nodejs crate

.PHONY: deploy
deploy:
	gcloud app deploy --project $(PROJECT)
