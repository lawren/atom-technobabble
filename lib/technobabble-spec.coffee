{WorkspaceView} = require 'atom'

beforeEach ->

  atom.workspaceView = new WorkspaceView
  atom.workspaceView.openSync()

  editorView = atom.workspaceView.getActiveView()
  editor = editorView.getEditor()

  # Package activation is done within a promise so this will wait for the end of it
  # before actually running the tests.
  waitsForPromise -> atom.packages.activatePackage('your-package-name')
