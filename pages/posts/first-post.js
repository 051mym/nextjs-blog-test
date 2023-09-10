import Link from "next/link";
import Image from "next/image";
import Head from "next/head";
import Script from "next/script";
import Layout from "../../components/layout";
import Alert from "../../components/alert";

export default function FirstPost() {
  return (
    <>
      <Layout>
        <Head>
          <title>First Post as</title>
        </Head>
        <Script
          src="https://connect.facebook.net/en_US/sdk.js"
          strategy="lazyOnload"
          onLoad={() =>
            console.log(`script loaded correctly, window.FB has been populated`)
          }
        />
        <div className="p-2 bg-yellow-200 text-red-200">
          <div id="title">
            <h1>First Post</h1>
          </div>
          <div id="body">
            <p className="">
              lorem ipsum dolor sit amet, consectetur adip
            </p>
          </div>
        </div>
        <h2>
          <Link href="/">Back to home</Link>
        </h2>
        <Profile />
        <Alert children={'Babi kau'} type={'success'} />
      </Layout>
    </>
  );
}

const Profile = () => (
  <Image
    src="/images/profile.jpg" // Route of the image file
    height={144} // Desired size with correct aspect ratio
    width={144} // Desired size with correct aspect ratio
    alt="Your Name"
  />
);
