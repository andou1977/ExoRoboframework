# resources/JWTUtils.py
import jwt
import time
from jwt.exceptions import ExpiredSignatureError, InvalidSignatureError, DecodeError
from robot.api import logger

def verify_and_decode_jwt(token, secret):
    """
    Vérifie la signature du JWT et le décode.
    Lève une erreur si signature invalide ou token expiré.
    """
    try:
        decoded = jwt.decode(token, secret, algorithms=["HS256"])
        logger.info(f"Decoded JWT: {decoded}")
        return decoded
    except ExpiredSignatureError:
        raise AssertionError(" Le token est expiré.")
    except InvalidSignatureError:
        raise AssertionError(" Signature invalide : token falsifié.")
    except DecodeError:
        raise AssertionError(" Format du token invalide.")

def check_claims(decoded_token, expected_name=None, expected_admin=None):
    """
    Vérifie certaines claims du JWT.
    """
    if expected_name:
        assert decoded_token.get("name") == expected_name, f"Nom incorrect: {decoded_token.get('name')}"
    if expected_admin is not None:
        assert decoded_token.get("admin") == expected_admin, f"Claim admin incorrect: {decoded_token.get('admin')}"
    logger.info(" Claims valides.")
