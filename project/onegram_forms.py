from flask_wtf import Form
from wtforms import StringField
from wtforms.validators import DataRequired, Length


class PostTweetForm(Form):
    tweet = StringField(
        '1Gram',
        validators=[DataRequired(), Length(min=1, max=1)]
    )
