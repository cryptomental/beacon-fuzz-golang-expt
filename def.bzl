def _hello_ctx_impl(ctx):
    out = ctx.actions.declare_file(ctx.label.name)
    ctx.actions.write(
        output = out,
        content = """
names:
  - world
  - tim
  - nick
""",
    )
    return [DefaultInfo(files = depset([out]))]

hello_ctx = rule(
    implementation = _hello_ctx_impl
)
