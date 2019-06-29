load("@io_bazel_rules_go//go:def.bzl", "go_binary")

go_binary(
    name = "test-zetasql",
    srcs = [
        "main.go", 
    ],
    deps = ["@com_google_zetasql//zetasql/parser:parser"],
)
