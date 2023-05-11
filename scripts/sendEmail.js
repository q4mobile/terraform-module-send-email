const nodemailer = require('nodemailer');
const aws = require("@aws-sdk/client-ses");
const { defaultProvider } = require("@aws-sdk/credential-provider-node");

const ses = new aws.SES({
    apiVersion: "2010-12-01",
    region: process.env.REGION,
    defaultProvider,
});

const transporter = nodemailer.createTransport({
    SES: { ses, aws },
});

const mailOptions = {
    from: process.env.FROM,
    to: process.env.TO,
    subject: process.env.SUBJECT,
    text: process.env.BODY
};

console.log(mailOptions);

transporter.sendMail(mailOptions, function(error, info){
    if (error) {
        console.log(error);
        throw error;
    } else {
        console.log('Email sent: ' + info.response);
    }
});