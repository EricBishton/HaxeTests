package tivo;
class InternalAnonymousFunctionDeclaration {
    public function new() {
    }

    function waitForStateChange( lastState : StreamingState, transcoder : TranscoderDevice ) : Promise<Transcoder_MainDyn>
    {
        Log.debug(TAG + "Waiting for state change, lastState: " + lastState + ", transcoder: " + transcoder);

        // When in Local mode, do a LAN scan when main-dyn request fails.
        // Otherwise just do a regular main-dyn request through the proxy.
        var doMainDynRequest = if (CoreImpl.getInstanceInternal().getDeviceManagerInternal().getCurrentDeviceInternal().isLocalMode())
        {
            function() return getMainDyn(transcoder).errorPipe(function(e:TranscoderHttpRequestError) return switch (e)
            {
                // Start scanning the LAN when a client error occurs
                case ClientError (_,_,_):
                    return scanLanForTranscoder(transcoder)
                    .pipe(function(newTranscoder:TranscoderDevice)  return waitForStateChange(lastState, newTranscoder));
                default: //TODO: Should we handle: NotOK(_,_) and InvalidJSON (_,_) with a LAN scan?
                    throw e;
            });
        }
        else
            getMainDyn.bind(transcoder);


    }

    function reduced () {
        var a = if (true) { function() return false; } // <<--- Error was at open paren of function.
    }
}

class Promise<T> {}